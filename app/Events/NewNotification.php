<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Carbon;

class NewNotification implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     */
    public $data;
    public $user_id;
    public $user_name;
    public $invoice_number;
    public $invoice_Date;
    public $date;
    public $time;

    public function __construct($data)
    {
        $this->user_id=$data['user_id'];
        $this->user_name=$data['user_name'];
        $this->invoice_number=$data['invoice_number'];
        $this->invoice_Date=$data['invoice_Date'];
        $this->date=date('y-m-d',strtotime(Carbon::now()));
        $this->time=date('H-:i:s',strtotime(Carbon::now()));
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return array<int, \Illuminate\Broadcasting\Channel>
     */
    public function broadcastOn()
    {
        return new Channel('new-notification');

    }

    public function broadcastAs() {
        return 'test.notification';
    }

}
