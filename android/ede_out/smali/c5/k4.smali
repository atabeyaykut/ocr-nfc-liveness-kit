.class public final Lc5/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls3/a;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ls3/a;I)V
    .locals 0

    iput p3, p0, Lc5/k4;->a:I

    iput-object p1, p0, Lc5/k4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc5/k4;->b:Ls3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lc5/k4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5/k4;->b:Ls3/a;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/k4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    check-cast v2, Lc5/w4;

    .line 12
    .line 13
    iget-object v0, v2, Lc5/w4;->a:Lc5/o7;

    .line 14
    .line 15
    invoke-virtual {v0}, Lc5/o7;->a()V

    .line 16
    .line 17
    .line 18
    check-cast v1, Lc5/b;

    .line 19
    .line 20
    iget-object v0, v1, Lc5/b;->c:Lc5/r7;

    .line 21
    .line 22
    invoke-virtual {v0}, Lc5/r7;->E()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, v2, Lc5/w4;->a:Lc5/o7;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, v1, Lc5/b;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lc5/o7;->y(Ljava/lang/String;)Lc5/y7;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2, v1, v0}, Lc5/o7;->n(Lc5/b;Lc5/y7;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, v1, Lc5/b;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lc5/o7;->y(Ljava/lang/String;)Lc5/y7;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2, v1, v0}, Lc5/o7;->q(Lc5/b;Lc5/y7;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void

    .line 63
    :goto_1
    check-cast v2, Lc5/t6;

    .line 64
    .line 65
    iget-object v0, v2, Lc5/t6;->d:Lc5/v2;

    .line 66
    .line 67
    iget-object v3, v2, Lc5/x4;->a:Lc5/z4;

    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    check-cast v3, Lc5/i4;

    .line 72
    .line 73
    iget-object v0, v3, Lc5/i4;->j:Lc5/e3;

    .line 74
    .line 75
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "Failed to reset data on the service: not connected to service"

    .line 79
    .line 80
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    :try_start_0
    move-object v4, v1

    .line 87
    check-cast v4, Lc5/y7;

    .line 88
    .line 89
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    check-cast v1, Lc5/y7;

    .line 93
    .line 94
    invoke-interface {v0, v1}, Lc5/v2;->r(Lc5/y7;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    check-cast v3, Lc5/i4;

    .line 100
    .line 101
    iget-object v1, v3, Lc5/i4;->j:Lc5/e3;

    .line 102
    .line 103
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 104
    .line 105
    .line 106
    const-string v3, "Failed to reset data on the service: remote exception"

    .line 107
    .line 108
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 109
    .line 110
    invoke-virtual {v1, v0, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {v2}, Lc5/t6;->s()V

    .line 114
    .line 115
    .line 116
    :goto_3
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
