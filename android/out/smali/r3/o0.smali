.class public abstract Lr3/o0;
.super Lj4/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lj4/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v2, :cond_7

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-eq p1, v3, :cond_6

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq p1, v3, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Lr3/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    .line 24
    invoke-static {p2, v4}, Lj4/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lr3/b1;

    .line 29
    .line 30
    invoke-static {p2}, Lj4/c;->b(Landroid/os/Parcel;)V

    .line 31
    .line 32
    .line 33
    move-object p2, p0

    .line 34
    check-cast p2, Lr3/x0;

    .line 35
    .line 36
    iget-object v5, p2, Lr3/x0;->a:Lr3/c;

    .line 37
    .line 38
    const-string v6, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    .line 39
    .line 40
    invoke-static {v5, v6}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object v4, v5, Lr3/c;->v:Lr3/b1;

    .line 47
    .line 48
    instance-of v5, v5, Lm4/q;

    .line 49
    .line 50
    if-eqz v5, :cond_5

    .line 51
    .line 52
    iget-object v5, v4, Lr3/b1;->d:Lr3/f;

    .line 53
    .line 54
    invoke-static {}, Lr3/s;->a()Lr3/s;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    if-nez v5, :cond_1

    .line 59
    .line 60
    move-object v5, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v5, v5, Lr3/f;->a:Lr3/t;

    .line 63
    .line 64
    :goto_0
    monitor-enter v6

    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    :try_start_0
    sget-object v5, Lr3/s;->c:Lr3/t;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object v7, v6, Lr3/s;->a:Lr3/t;

    .line 71
    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    iget v7, v7, Lr3/t;->a:I

    .line 75
    .line 76
    iget v8, v5, Lr3/t;->a:I

    .line 77
    .line 78
    if-ge v7, v8, :cond_4

    .line 79
    .line 80
    :cond_3
    :goto_1
    iput-object v5, v6, Lr3/s;->a:Lr3/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    :cond_4
    monitor-exit v6

    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v6

    .line 86
    throw p1

    .line 87
    :cond_5
    :goto_2
    iget-object v4, v4, Lr3/b1;->a:Landroid/os/Bundle;

    .line 88
    .line 89
    iget-object v5, p2, Lr3/x0;->a:Lr3/c;

    .line 90
    .line 91
    const-string v6, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 92
    .line 93
    invoke-static {v5, v6}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v5, p2, Lr3/x0;->a:Lr3/c;

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v6, Lr3/z0;

    .line 102
    .line 103
    invoke-direct {v6, v5, p1, v3, v4}, Lr3/z0;-><init>(Lr3/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, v5, Lr3/c;->f:Lr3/v0;

    .line 107
    .line 108
    iget v3, p2, Lr3/x0;->b:I

    .line 109
    .line 110
    invoke-virtual {p1, v2, v3, v0, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .line 116
    .line 117
    iput-object v1, p2, Lr3/x0;->a:Lr3/c;

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    .line 125
    invoke-static {p2, p1}, Lj4/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-static {p2}, Lj4/c;->b(Landroid/os/Parcel;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Ljava/lang/Exception;

    .line 135
    .line 136
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string p2, "GmsClient"

    .line 140
    .line 141
    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    .line 142
    .line 143
    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    .line 157
    invoke-static {p2, v4}, Lj4/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Landroid/os/Bundle;

    .line 162
    .line 163
    invoke-static {p2}, Lj4/c;->b(Landroid/os/Parcel;)V

    .line 164
    .line 165
    .line 166
    move-object p2, p0

    .line 167
    check-cast p2, Lr3/x0;

    .line 168
    .line 169
    iget-object v5, p2, Lr3/x0;->a:Lr3/c;

    .line 170
    .line 171
    const-string v6, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 172
    .line 173
    invoke-static {v5, v6}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v5, p2, Lr3/x0;->a:Lr3/c;

    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    new-instance v6, Lr3/z0;

    .line 182
    .line 183
    invoke-direct {v6, v5, p1, v3, v4}, Lr3/z0;-><init>(Lr3/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, v5, Lr3/c;->f:Lr3/v0;

    .line 187
    .line 188
    iget v3, p2, Lr3/x0;->b:I

    .line 189
    .line 190
    invoke-virtual {p1, v2, v3, v0, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    .line 196
    .line 197
    iput-object v1, p2, Lr3/x0;->a:Lr3/c;

    .line 198
    .line 199
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    .line 201
    .line 202
    return v2
.end method
