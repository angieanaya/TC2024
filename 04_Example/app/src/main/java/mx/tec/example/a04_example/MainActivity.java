package mx.tec.example.a04_example;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    Context context;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        context = getApplicationContext();

        Toast myToast = new Toast(context);
        myToast.makeText(context, "I am a toast", Toast.LENGTH_SHORT).show();

        AlertDialog.Builder dialogConf = new AlertDialog.Builder(this);
        dialogConf.setTitle("Hi dialog");
        dialogConf.setMessage("Are you sure?");

        dialogConf.setPositiveButton("Yes",
                new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Toast myToast = new Toast(context);
                        myToast.makeText(context, "You accepted", Toast.LENGTH_SHORT).show();
                    }
                });
        dialogConf.setNegativeButton("No",
                new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Toast myToast = new Toast(context);
                        myToast.makeText(context, "You canceled", Toast.LENGTH_SHORT).show();
                    }
                });
        AlertDialog myDialog = dialogConf.create();
        myDialog.show();

        int NOTIF_ID = 1234;
        Notification.Builder notifBuilder = new Notification.Builder(this);
        notifBuilder.setSmallIcon(R.mipmap.ic_launcher);
        notifBuilder.setContentTitle("This is my shiny notification");
        notifBuilder.setContentText("This is the detail :)");

        Intent notificationIntent = new Intent(this, ChildActivity.class);

        PendingIntent contentIntent =
                PendingIntent.getActivity(context, 0, notificationIntent, 0);
        notifBuilder.setContentIntent(contentIntent);

        NotificationManager myNotification = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        myNotification.notify(NOTIF_ID, notifBuilder.build());

    }
}