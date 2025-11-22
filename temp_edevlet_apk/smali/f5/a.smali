.class public final Lf5/a;
.super Lr3/h;
.source "SourceFile"

# interfaces
.implements Le5/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr3/h<",
        "Lf5/g;",
        ">;",
        "Le5/f;"
    }
.end annotation


# instance fields
.field public final B:Z

.field public final C:Lr3/e;

.field public final D:Landroid/os/Bundle;

.field public final E:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Landroid/os/Bundle;Ln3/d$a;Ln3/d$b;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lr3/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ln3/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ln3/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v3, 0x2c

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lr3/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILr3/e;Lo3/c;Lo3/j;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lf5/a;->B:Z

    .line 14
    .line 15
    iput-object p3, p0, Lf5/a;->C:Lr3/e;

    .line 16
    .line 17
    iput-object p4, p0, Lf5/a;->D:Landroid/os/Bundle;

    .line 18
    .line 19
    iget-object p1, p3, Lr3/e;->h:Ljava/lang/Integer;

    .line 20
    .line 21
    iput-object p1, p0, Lf5/a;->E:Ljava/lang/Integer;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lr3/c$d;

    invoke-direct {v0, p0}, Lr3/c$d;-><init>(Lr3/c;)V

    invoke-virtual {p0, v0}, Lr3/c;->c(Lr3/c$c;)V

    return-void
.end method

.method public final i(Lf5/f;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lf5/a;->C:Lr3/e;

    .line 7
    .line 8
    iget-object v3, v3, Lr3/e;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    const-string v4, "<<default account>>"

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    new-instance v3, Landroid/accounts/Account;

    .line 16
    .line 17
    const-string v5, "com.google"

    .line 18
    .line 19
    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    iget-object v4, p0, Lr3/c;->c:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v4}, Lj3/b;->a(Landroid/content/Context;)Lj3/b;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lj3/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v4, v2

    .line 42
    :goto_1
    new-instance v5, Lr3/j0;

    .line 43
    .line 44
    iget-object v6, p0, Lf5/a;->E:Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-static {v6}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x2

    .line 54
    invoke-direct {v5, v7, v3, v6, v4}, Lr3/j0;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lr3/c;->w()Landroid/os/IInterface;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lf5/g;

    .line 62
    .line 63
    new-instance v4, Lf5/j;

    .line 64
    .line 65
    invoke-direct {v4, v0, v5}, Lf5/j;-><init>(ILr3/j0;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget-object v6, v3, Lh4/a;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget v6, Lh4/c;->a:I

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v4, v5, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    .line 84
    .line 85
    move-object v4, p1

    .line 86
    check-cast v4, Lh4/b;

    .line 87
    .line 88
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 92
    .line 93
    .line 94
    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :try_start_2
    iget-object v3, v3, Lh4/a;->a:Landroid/os/IBinder;

    .line 96
    .line 97
    const/16 v6, 0xc

    .line 98
    .line 99
    invoke-interface {v3, v6, v5, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    :try_start_3
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception v3

    .line 113
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 117
    .line 118
    .line 119
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 120
    :catch_0
    move-exception v3

    .line 121
    const-string v4, "SignInClientImpl"

    .line 122
    .line 123
    const-string v5, "Remote service probably died when signIn is called"

    .line 124
    .line 125
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :try_start_4
    new-instance v5, Lf5/l;

    .line 129
    .line 130
    new-instance v6, Lm3/b;

    .line 131
    .line 132
    const/16 v7, 0x8

    .line 133
    .line 134
    invoke-direct {v6, v7, v2}, Lm3/b;-><init>(ILandroid/app/PendingIntent;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v5, v0, v6, v2}, Lf5/l;-><init>(ILm3/b;Lr3/l0;)V

    .line 138
    .line 139
    .line 140
    check-cast p1, Lo3/p0;

    .line 141
    .line 142
    new-instance v0, Lo3/n0;

    .line 143
    .line 144
    invoke-direct {v0, v1, p1, v5}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Lo3/p0;->b:Landroid/os/Handler;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 154
    .line 155
    invoke-static {v4, p1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 160
    .line 161
    const-string v0, "Expecting a valid ISignInCallbacks"

    .line 162
    .line 163
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1
.end method

.method public final l()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lf5/a;->B:Z

    return v0
.end method

.method public final synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lf5/g;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lf5/g;

    goto :goto_0

    :cond_1
    new-instance v0, Lf5/g;

    invoke-direct {v0, p1}, Lf5/g;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final u()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lf5/a;->C:Lr3/e;

    .line 2
    .line 3
    iget-object v1, v0, Lr3/e;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lr3/c;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lf5/a;->D:Landroid/os/Bundle;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lr3/e;->e:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 22
    .line 23
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v2
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method
