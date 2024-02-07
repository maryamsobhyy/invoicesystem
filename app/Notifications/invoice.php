<?php

namespace App\Notifications;

use Illuminate\Broadcasting\Channel;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Notifications\Messages\BroadcastMessage;

class invoice extends Notification
{
    use Queueable;
    private $invoices;
    private $msg;

    /**
     * Create a new notification instance.
     */
    public function __construct($invoices,$msg='')
    {
        $this->invoices=$invoices;
        $this->msg=$msg;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['database','broadcast'];
    }

    /**


    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            //
        ];
    }
    public function toDatabase($notifiable)
    {
        return [

            //'data' => $this->details['body']
            'id'=> $this->invoices->id,
            // 'title'=>'تم اضافة فاتورة جديد بواسطة :',
            'title'=>$this->msg,

            'user'=> Auth::user()->name,

        ];
    }
    public function toBroadcast(object $notifiable): BroadcastMessage
    {
        return new BroadcastMessage([
            'invoice_id' => $this->invoices->id,
            'amount' => $this->invoices->amount??0,
        ]);
    }
    public function broadcastOn()
    {
        return new Channel('new-notification');

    }

    public function broadcastAs() {
        return 'notification';
    }
}
