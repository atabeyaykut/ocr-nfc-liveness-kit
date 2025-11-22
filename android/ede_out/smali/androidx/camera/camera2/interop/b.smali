.class public final synthetic Landroidx/camera/camera2/interop/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .locals 0

    iput p2, p0, Landroidx/camera/camera2/interop/b;->a:I

    iput-object p1, p0, Landroidx/camera/camera2/interop/b;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/camera/camera2/interop/b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/camera/camera2/interop/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/camera2/interop/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/camera/camera2/interop/b;->b:Z

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->g(Landroidx/camera/camera2/interop/Camera2CameraControl;Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/interop/b;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lb7/c;

    .line 20
    .line 21
    iget-boolean v1, p0, Landroidx/camera/camera2/interop/b;->b:Z

    .line 22
    .line 23
    sget-object v2, Lb7/c;->m:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v2, Lb7/c;->m:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v2

    .line 31
    :try_start_0
    iget-object v3, v0, Lb7/c;->a:Lx5/c;

    .line 32
    .line 33
    invoke-virtual {v3}, Lx5/c;->a()V

    .line 34
    .line 35
    .line 36
    iget-object v3, v3, Lx5/c;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v3}, Lqd/f;->c(Landroid/content/Context;)Lqd/f;

    .line 39
    .line 40
    .line 41
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    iget-object v4, v0, Lb7/c;->c:Ld7/c;

    .line 43
    .line 44
    invoke-virtual {v4}, Ld7/c;->b()Ld7/a;

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v3}, Lqd/f;->d()V

    .line 51
    .line 52
    .line 53
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :try_start_3
    invoke-virtual {v4}, Ld7/a;->f()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x5

    .line 59
    const/4 v5, 0x1

    .line 60
    const/4 v6, 0x0

    .line 61
    if-ne v2, v3, :cond_1

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 66
    :goto_1
    if-nez v2, :cond_5

    .line 67
    .line 68
    invoke-virtual {v4}, Ld7/a;->f()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v7, 0x3

    .line 73
    if-ne v2, v7, :cond_2

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 v2, 0x0

    .line 78
    :goto_2
    if-eqz v2, :cond_3

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_3
    if-nez v1, :cond_4

    .line 82
    .line 83
    iget-object v1, v0, Lb7/c;->d:Lb7/l;

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Lb7/l;->a(Ld7/a;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_d

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catch_0
    move-exception v1

    .line 93
    goto :goto_9

    .line 94
    :cond_4
    :goto_3
    invoke-virtual {v0, v4}, Lb7/c;->d(Ld7/a;)Ld7/a;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    :goto_4
    invoke-virtual {v0, v4}, Lb7/c;->h(Ld7/a;)Ld7/a;

    .line 100
    .line 101
    .line 102
    move-result-object v1
    :try_end_3
    .catch Lb7/e; {:try_start_3 .. :try_end_3} :catch_0

    .line 103
    :goto_5
    invoke-virtual {v0, v1}, Lb7/c;->e(Ld7/a;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v4, v1}, Lb7/c;->l(Ld7/a;Ld7/a;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ld7/a;->f()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const/4 v4, 0x4

    .line 114
    if-ne v2, v4, :cond_6

    .line 115
    .line 116
    const/4 v2, 0x1

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    const/4 v2, 0x0

    .line 119
    :goto_6
    if-eqz v2, :cond_7

    .line 120
    .line 121
    iget-object v2, v1, Ld7/a;->b:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lb7/c;->k(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {v1}, Ld7/a;->f()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-ne v2, v3, :cond_8

    .line 131
    .line 132
    const/4 v2, 0x1

    .line 133
    goto :goto_7

    .line 134
    :cond_8
    const/4 v2, 0x0

    .line 135
    :goto_7
    if-eqz v2, :cond_9

    .line 136
    .line 137
    new-instance v1, Lb7/e;

    .line 138
    .line 139
    invoke-direct {v1}, Lb7/e;-><init>()V

    .line 140
    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_9
    iget v2, v1, Ld7/a;->c:I

    .line 144
    .line 145
    const/4 v3, 0x2

    .line 146
    if-eq v2, v3, :cond_b

    .line 147
    .line 148
    if-ne v2, v5, :cond_a

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_a
    const/4 v5, 0x0

    .line 152
    :cond_b
    :goto_8
    if-eqz v5, :cond_c

    .line 153
    .line 154
    new-instance v1, Ljava/io/IOException;

    .line 155
    .line 156
    const-string v2, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_c
    invoke-virtual {v0, v1}, Lb7/c;->j(Ld7/a;)V

    .line 163
    .line 164
    .line 165
    goto :goto_a

    .line 166
    :goto_9
    invoke-virtual {v0, v1}, Lb7/c;->i(Ljava/lang/Exception;)V

    .line 167
    .line 168
    .line 169
    :cond_d
    :goto_a
    return-void

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    if-eqz v3, :cond_e

    .line 172
    .line 173
    :try_start_4
    invoke-virtual {v3}, Lqd/f;->d()V

    .line 174
    .line 175
    .line 176
    :cond_e
    throw v0

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    throw v0

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
