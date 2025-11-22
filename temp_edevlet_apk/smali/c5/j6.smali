.class public final Lc5/j6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc5/y7;

.field public final synthetic c:Lc5/t6;


# direct methods
.method public synthetic constructor <init>(Lc5/t6;Lc5/y7;I)V
    .locals 0

    iput p3, p0, Lc5/j6;->a:I

    iput-object p1, p0, Lc5/j6;->c:Lc5/t6;

    iput-object p2, p0, Lc5/j6;->b:Lc5/y7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lc5/j6;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5/j6;->c:Lc5/t6;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/j6;->b:Lc5/y7;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    iget-object v0, v1, Lc5/t6;->d:Lc5/v2;

    .line 12
    .line 13
    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    check-cast v3, Lc5/i4;

    .line 18
    .line 19
    iget-object v0, v3, Lc5/i4;->j:Lc5/e3;

    .line 20
    .line 21
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "Discarding data. Failed to send app launch"

    .line 25
    .line 26
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_0
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2}, Lc5/v2;->d0(Lc5/y7;)V

    .line 36
    .line 37
    .line 38
    move-object v4, v3

    .line 39
    check-cast v4, Lc5/i4;

    .line 40
    .line 41
    invoke-virtual {v4}, Lc5/i4;->p()Lc5/y2;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lc5/y2;->n()V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v1, v0, v4, v2}, Lc5/t6;->g(Lc5/v2;Ls3/a;Lc5/y7;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lc5/t6;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    check-cast v3, Lc5/i4;

    .line 58
    .line 59
    iget-object v1, v3, Lc5/i4;->j:Lc5/e3;

    .line 60
    .line 61
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "Failed to send app launch to the service"

    .line 65
    .line 66
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 67
    .line 68
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void

    .line 72
    :goto_1
    iget-object v0, v1, Lc5/t6;->d:Lc5/v2;

    .line 73
    .line 74
    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    check-cast v3, Lc5/i4;

    .line 79
    .line 80
    iget-object v0, v3, Lc5/i4;->j:Lc5/e3;

    .line 81
    .line 82
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "Failed to send consent settings to service"

    .line 86
    .line 87
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    :try_start_1
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v2}, Lc5/v2;->s0(Lc5/y7;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lc5/t6;->s()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_1
    move-exception v0

    .line 104
    check-cast v3, Lc5/i4;

    .line 105
    .line 106
    iget-object v1, v3, Lc5/i4;->j:Lc5/e3;

    .line 107
    .line 108
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 109
    .line 110
    .line 111
    const-string v2, "Failed to send consent settings to the service"

    .line 112
    .line 113
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
