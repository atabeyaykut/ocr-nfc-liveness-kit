.class public final Lzh/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:Ljava/nio/ByteBuffer;

.field public final synthetic d:Lzh/e;


# direct methods
.method public constructor <init>(Lzh/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lzh/e$b;->d:Lzh/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzh/e$b;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzh/e$b;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lzh/e$b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lzh/e$b;->b:Z

    iget-object p1, p0, Lzh/e$b;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final run()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lzh/e$b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lzh/e$b;->b:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lzh/e$b;->c:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    :try_start_1
    iget-object v1, p0, Lzh/e$b;->a:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception v1

    .line 19
    :try_start_2
    const-string v2, "MIDemoApp:CameraSource"

    .line 20
    .line 21
    const-string v3, "Frame processing loop terminated."

    .line 22
    .line 23
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_0
    if-nez v1, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_3
    iget-object v1, p0, Lzh/e$b;->c:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    iput-object v2, p0, Lzh/e$b;->c:Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    sget-object v2, Ll9/m;->a:Ll9/m;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    :try_start_4
    iget-object v0, p0, Lzh/e$b;->d:Lzh/e;

    .line 41
    .line 42
    iget-object v2, v0, Lzh/e;->m:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    :try_start_5
    const-string v3, "MIDemoApp:CameraSource"

    .line 46
    .line 47
    const-string v4, "Process an image"

    .line 48
    .line 49
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v3, v0, Lzh/e;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;

    .line 53
    .line 54
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, v0, Lzh/e;->f:Lq3/a;

    .line 58
    .line 59
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget v4, v4, Lq3/a;->a:I

    .line 63
    .line 64
    iget-object v5, v0, Lzh/e;->f:Lq3/a;

    .line 65
    .line 66
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget v5, v5, Lq3/a;->b:I

    .line 70
    .line 71
    iget v6, v0, Lzh/e;->e:I

    .line 72
    .line 73
    new-instance v7, Lzh/d;

    .line 74
    .line 75
    invoke-direct {v7, v4, v5, v6}, Lzh/d;-><init>(III)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lzh/e;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 79
    .line 80
    invoke-virtual {v3, v1, v7, v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->b(Ljava/nio/ByteBuffer;Lzh/d;Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    .line 82
    .line 83
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 84
    iget-object v0, p0, Lzh/e$b;->d:Lzh/e;

    .line 85
    .line 86
    iget-object v0, v0, Lzh/e;->c:Landroid/hardware/Camera;

    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    :try_start_7
    monitor-exit v2

    .line 104
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    :try_start_8
    const-string v2, "MIDemoApp:CameraSource"

    .line 107
    .line 108
    const-string v3, "Exception thrown from receiver."

    .line 109
    .line 110
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lzh/e$b;->d:Lzh/e;

    .line 114
    .line 115
    iget-object v0, v0, Lzh/e;->c:Landroid/hardware/Camera;

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :catchall_2
    move-exception v0

    .line 133
    iget-object v2, p0, Lzh/e$b;->d:Lzh/e;

    .line 134
    .line 135
    iget-object v2, v2, Lzh/e;->c:Landroid/hardware/Camera;

    .line 136
    .line 137
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :catchall_3
    move-exception v1

    .line 152
    monitor-exit v0

    .line 153
    throw v1
.end method
