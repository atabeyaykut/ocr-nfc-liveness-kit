.class public final Lc5/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lc5/t3;->a:I

    iput-object p1, p0, Lc5/t3;->d:Ljava/lang/Object;

    iput-object p2, p0, Lc5/t3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc5/t3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lc5/t3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5/t3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/t3;->d:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    check-cast v2, Lc5/u3;

    .line 12
    .line 13
    iget-object v0, v2, Lc5/u3;->b:Lc5/v3;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/gms/internal/measurement/n0;

    .line 16
    .line 17
    iget-object v0, v0, Lc5/v3;->a:Lc5/i4;

    .line 18
    .line 19
    iget-object v3, v0, Lc5/i4;->k:Lc5/h4;

    .line 20
    .line 21
    iget-object v4, v0, Lc5/i4;->j:Lc5/e3;

    .line 22
    .line 23
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "package_name"

    .line 35
    .line 36
    iget-object v2, v2, Lc5/u3;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/n0;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v4, Lc5/e3;->f:Lc5/c3;

    .line 51
    .line 52
    const-string v2, "Install Referrer Service returned a null response"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, v4, Lc5/e3;->f:Lc5/c3;

    .line 67
    .line 68
    const-string v3, "Exception occurred while retrieving the Install Referrer"

    .line 69
    .line 70
    invoke-virtual {v2, v1, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_0
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 74
    .line 75
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v1, "Unexpected call on client side"

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :goto_1
    check-cast v2, Lc5/w4;

    .line 90
    .line 91
    iget-object v0, v2, Lc5/w4;->a:Lc5/o7;

    .line 92
    .line 93
    invoke-virtual {v0}, Lc5/o7;->a()V

    .line 94
    .line 95
    .line 96
    check-cast v1, Lc5/r7;

    .line 97
    .line 98
    invoke-virtual {v1}, Lc5/r7;->E()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v2, v2, Lc5/w4;->a:Lc5/o7;

    .line 103
    .line 104
    iget-object v3, p0, Lc5/t3;->c:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v3, Lc5/y7;

    .line 107
    .line 108
    if-nez v0, :cond_1

    .line 109
    .line 110
    invoke-virtual {v2, v1, v3}, Lc5/o7;->o(Lc5/r7;Lc5/y7;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_1
    invoke-virtual {v2, v1, v3}, Lc5/o7;->s(Lc5/r7;Lc5/y7;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
