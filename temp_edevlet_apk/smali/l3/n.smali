.class public final synthetic Ll3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll3/n;->a:I

    iput-object p2, p0, Ll3/n;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll3/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lh5/t;Lh5/k;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/n;->a:I

    .line 2
    iput-object p1, p0, Ll3/n;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll3/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Ll3/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Ll3/n;->c:Ljava/lang/Object;

    .line 9
    .line 10
    :try_start_0
    move-object v1, v0

    .line 11
    check-cast v1, Lh5/t;

    .line 12
    .line 13
    iget-object v1, v1, Lh5/t;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lh5/j;

    .line 16
    .line 17
    iget-object v2, p0, Ll3/n;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lh5/k;

    .line 20
    .line 21
    invoke-virtual {v2}, Lh5/k;->i()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Lh5/j;->c(Ljava/lang/Object;)Lh5/k;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_0
    .catch Lh5/i; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Lh5/t;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/NullPointerException;

    .line 34
    .line 35
    const-string v2, "Continuation returned null"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object v2, Lh5/m;->b:Lh5/x;

    .line 42
    .line 43
    check-cast v0, Lh5/t;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Lh5/k;->d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lh5/k;->c(Ljava/util/concurrent/Executor;Lh5/f;)Lh5/z;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, Lh5/k;->a(Lh5/x;Lh5/d;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    check-cast v0, Lh5/t;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_1
    check-cast v0, Lh5/t;

    .line 60
    .line 61
    invoke-virtual {v0}, Lh5/t;->a()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_2
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    instance-of v2, v2, Ljava/lang/Exception;

    .line 71
    .line 72
    check-cast v0, Lh5/t;

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/Exception;

    .line 81
    .line 82
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lh5/t;->e(Ljava/lang/Exception;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Ll3/n;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Ll3/o;

    .line 89
    .line 90
    iget-object v1, p0, Ll3/n;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ll3/r;

    .line 93
    .line 94
    iget v1, v1, Ll3/r;->a:I

    .line 95
    .line 96
    monitor-enter v0

    .line 97
    :try_start_1
    iget-object v2, v0, Ll3/o;->e:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ll3/r;

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const/16 v4, 0x1f

    .line 110
    .line 111
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .line 113
    .line 114
    const-string v4, "Timing out request: "

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v4, "MessengerIpcClient"

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iget-object v3, v0, Ll3/o;->e:Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Ll3/s;

    .line 137
    .line 138
    const-string v3, "Timed out waiting for response"

    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-direct {v1, v3, v4}, Ll3/s;-><init>(Ljava/lang/String;Ljava/lang/SecurityException;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Ll3/r;->c(Ll3/s;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ll3/o;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    :cond_2
    monitor-exit v0

    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception v1

    .line 153
    monitor-exit v0

    .line 154
    throw v1

    .line 155
    :goto_2
    iget-object v0, p0, Ll3/n;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Lnc/i;

    .line 158
    .line 159
    iget-object v1, p0, Ll3/n;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v1, Lnc/y;

    .line 162
    .line 163
    sget-object v2, Ll9/m;->a:Ll9/m;

    .line 164
    .line 165
    invoke-interface {v0, v1, v2}, Lnc/i;->j(Lnc/y;Ll9/m;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
