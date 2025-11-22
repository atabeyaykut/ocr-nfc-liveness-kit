.class public final Lc5/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lc5/r3;


# direct methods
.method public synthetic constructor <init>(Lc5/r3;JI)V
    .locals 0

    iput p4, p0, Lc5/m5;->a:I

    iput-object p1, p0, Lc5/m5;->c:Lc5/r3;

    iput-wide p2, p0, Lc5/m5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-wide v4, p0, Lc5/m5;->b:J

    .line 2
    .line 3
    iget v0, p0, Lc5/m5;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Lc5/m5;->c:Lc5/r3;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v1, Lc5/f6;

    .line 12
    .line 13
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 14
    .line 15
    check-cast v0, Lc5/i4;

    .line 16
    .line 17
    invoke-virtual {v0}, Lc5/i4;->g()Lc5/u1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v4, v5}, Lc5/u1;->e(J)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, v1, Lc5/f6;->e:Lc5/b6;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    check-cast v1, Lc5/v5;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {v1, v4, v5, v0}, Lc5/v5;->q(JZ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 35
    .line 36
    check-cast v0, Lc5/i4;

    .line 37
    .line 38
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lc5/t6;->x(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_0
    move-object v6, v1

    .line 52
    check-cast v6, Lc5/e7;

    .line 53
    .line 54
    invoke-virtual {v6}, Lc5/t2;->b()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Lc5/e7;->g()V

    .line 58
    .line 59
    .line 60
    iget-object v0, v6, Lc5/x4;->a:Lc5/z4;

    .line 61
    .line 62
    move-object v7, v0

    .line 63
    check-cast v7, Lc5/i4;

    .line 64
    .line 65
    iget-object v0, v7, Lc5/i4;->j:Lc5/e3;

    .line 66
    .line 67
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 75
    .line 76
    const-string v2, "Activity paused, time"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Lc5/z6;

    .line 82
    .line 83
    iget-object v9, v6, Lc5/e7;->f:Lc5/a7;

    .line 84
    .line 85
    iget-object v10, v9, Lc5/a7;->b:Lc5/e7;

    .line 86
    .line 87
    iget-object v0, v10, Lc5/x4;->a:Lc5/z4;

    .line 88
    .line 89
    check-cast v0, Lc5/i4;

    .line 90
    .line 91
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    move-object v0, v8

    .line 101
    move-object v1, v9

    .line 102
    invoke-direct/range {v0 .. v5}, Lc5/z6;-><init>(Lc5/a7;JJ)V

    .line 103
    .line 104
    .line 105
    iput-object v8, v9, Lc5/a7;->a:Lc5/z6;

    .line 106
    .line 107
    iget-object v0, v10, Lc5/e7;->c:Lcom/google/android/gms/internal/measurement/q0;

    .line 108
    .line 109
    const-wide/16 v1, 0x7d0

    .line 110
    .line 111
    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    iget-object v0, v7, Lc5/i4;->g:Lc5/e;

    .line 115
    .line 116
    invoke-virtual {v0}, Lc5/e;->q()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    .line 122
    iget-object v0, v6, Lc5/e7;->e:Lc5/c7;

    .line 123
    .line 124
    iget-object v0, v0, Lc5/c7;->c:Lc5/b7;

    .line 125
    .line 126
    invoke-virtual {v0}, Lc5/l;->a()V

    .line 127
    .line 128
    .line 129
    :cond_0
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
