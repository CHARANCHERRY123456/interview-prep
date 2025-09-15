codehelp : https://www.youtube.com/watch?v=_hrKEA1sEUo&list=PLDzeHZWIZsTr3nwuTegHLa2qlI81QweYG&index=26

spooling , buffering , caching

| Term          | What It Is                                                                                                                                                                                    | Why We Use It                                                                         | Everyday Example                                                                                                       |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| **Buffering** | Using a **temporary memory area (buffer)** to hold data while it’s being transferred between two devices or processes.                                                                        | Handles **speed mismatch** or bursty data so neither side waits too long.             | When you watch a video online, a few seconds preload in a buffer so playback stays smooth even if the network hiccups. |
| **Spooling**  | “**Simultaneous Peripheral Operations On-Line**”: putting data for a slow device into a **queue on disk (or memory)** so a program can keep working while the device handles jobs one by one. | Lets the CPU keep working while a slow device (like a printer) works at its own pace. | Sending many documents to a printer: jobs are stored in a print queue (spool) and printed one after another.           |
| **Caching**   | Storing **recently or frequently used data** in a **fast memory** (RAM or CPU cache) to avoid fetching it from a slower source repeatedly.                                                    | Improves **read speed** for repeated access.                                          | Browser cache keeps images and pages so the next visit loads instantly instead of re-downloading.                      |


IPC : https://www.geeksforgeeks.org/operating-systems/inter-process-communication-ipc/
summary : 
IPC (Inter-Process Communication) – Quick Revision

Processes often need to share data & stay in sync.
Two main approaches:

1)Shared Memory

Common memory region allocated by kernel.

Process A writes → Process B reads directly.

Fast, but needs synchronization (e.g., semaphores/mutex) to prevent conflicts.

2)Message Passing

Processes send/receive messages via kernel (e.g., sockets, pipes, message queues).

No shared memory, so it’s safer & simpler but a bit slower (extra system-call overhead).

Key idea:

Shared memory → speed, manual sync.

Message passing → safety, kernel-mediated.
