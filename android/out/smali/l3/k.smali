.class public final synthetic Ll3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll3/k;->a:I

    iput-object p2, p0, Ll3/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Ll3/k;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ll3/k;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lc5/s6;

    .line 10
    .line 11
    iget-object v0, v1, Lc5/s6;->c:Lc5/t6;

    .line 12
    .line 13
    new-instance v2, Landroid/content/ComponentName;

    .line 14
    .line 15
    iget-object v3, v0, Lc5/x4;->a:Lc5/z4;

    .line 16
    .line 17
    check-cast v3, Lc5/i4;

    .line 18
    .line 19
    iget-object v3, v3, Lc5/i4;->a:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v1, v1, Lc5/s6;->c:Lc5/t6;

    .line 22
    .line 23
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 24
    .line 25
    check-cast v1, Lc5/i4;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v1, "com.google.android.gms.measurement.AppMeasurementService"

    .line 31
    .line 32
    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Lc5/t6;->u(Lc5/t6;Landroid/content/ComponentName;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    check-cast v1, Ll3/o;

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    const-string v2, "Service disconnected"

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Ll3/o;->a(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_0
    check-cast v1, Lc5/z6;

    .line 49
    .line 50
    iget-object v0, v1, Lc5/z6;->c:Lc5/a7;

    .line 51
    .line 52
    iget-wide v3, v1, Lc5/z6;->a:J

    .line 53
    .line 54
    iget-object v2, v0, Lc5/a7;->b:Lc5/e7;

    .line 55
    .line 56
    invoke-virtual {v2}, Lc5/t2;->b()V

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Lc5/a7;->b:Lc5/e7;

    .line 60
    .line 61
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 62
    .line 63
    check-cast v2, Lc5/i4;

    .line 64
    .line 65
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 66
    .line 67
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 68
    .line 69
    .line 70
    const-string v5, "Application going to the background"

    .line 71
    .line 72
    iget-object v2, v2, Lc5/e3;->n:Lc5/c3;

    .line 73
    .line 74
    invoke-virtual {v2, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 78
    .line 79
    check-cast v2, Lc5/i4;

    .line 80
    .line 81
    iget-object v5, v2, Lc5/i4;->h:Lc5/s3;

    .line 82
    .line 83
    invoke-static {v5}, Lc5/i4;->c(Lc5/y4;)V

    .line 84
    .line 85
    .line 86
    iget-object v5, v5, Lc5/s3;->r:Lc5/m3;

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    invoke-virtual {v5, v6}, Lc5/m3;->a(Z)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v7, v2, Lc5/i4;->g:Lc5/e;

    .line 98
    .line 99
    invoke-virtual {v7}, Lc5/e;->q()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_1

    .line 104
    .line 105
    iget-object v0, v0, Lc5/e7;->e:Lc5/c7;

    .line 106
    .line 107
    iget-object v7, v0, Lc5/c7;->c:Lc5/b7;

    .line 108
    .line 109
    invoke-virtual {v7}, Lc5/l;->a()V

    .line 110
    .line 111
    .line 112
    iget-object v7, v2, Lc5/i4;->g:Lc5/e;

    .line 113
    .line 114
    const/4 v8, 0x0

    .line 115
    sget-object v9, Lc5/r2;->f0:Lc5/q2;

    .line 116
    .line 117
    invoke-virtual {v7, v8, v9}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    const/4 v8, 0x0

    .line 122
    iget-wide v9, v1, Lc5/z6;->b:J

    .line 123
    .line 124
    if-eqz v7, :cond_0

    .line 125
    .line 126
    iget-wide v11, v0, Lc5/c7;->b:J

    .line 127
    .line 128
    iput-wide v9, v0, Lc5/c7;->b:J

    .line 129
    .line 130
    const-string v1, "_et"

    .line 131
    .line 132
    sub-long v11, v9, v11

    .line 133
    .line 134
    invoke-virtual {v5, v1, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v2, Lc5/i4;->q:Lc5/f6;

    .line 138
    .line 139
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v6}, Lc5/f6;->o(Z)Lc5/b6;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1, v5, v6}, Lc5/v7;->t(Lc5/b6;Landroid/os/Bundle;Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_0
    const/4 v6, 0x0

    .line 151
    :goto_1
    invoke-virtual {v0, v8, v6, v9, v10}, Lc5/c7;->a(ZZJ)Z

    .line 152
    .line 153
    .line 154
    :cond_1
    iget-object v2, v2, Lc5/i4;->r:Lc5/v5;

    .line 155
    .line 156
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 157
    .line 158
    .line 159
    const-string v6, "auto"

    .line 160
    .line 161
    const-string v7, "_ab"

    .line 162
    .line 163
    invoke-virtual/range {v2 .. v7}, Lc5/v5;->o(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
