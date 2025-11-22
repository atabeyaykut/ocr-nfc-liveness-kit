.class public final Le5/b;
.super Ln3/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln3/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Ln3/a$c;Ln3/d$a;Ln3/d$b;)Ln3/a$e;
    .locals 7

    .line 1
    check-cast p4, Le5/a;

    .line 2
    .line 3
    new-instance p4, Lf5/a;

    .line 4
    .line 5
    iget-object v0, p3, Lr3/e;->h:Ljava/lang/Integer;

    .line 6
    .line 7
    new-instance v4, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 13
    .line 14
    iget-object v2, p3, Lr3/e;->a:Landroid/accounts/Account;

    .line 15
    .line 16
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const-string v0, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 37
    .line 38
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    const-string v0, "com.google.android.gms.signin.internal.serverClientId"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 54
    .line 55
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "com.google.android.gms.signin.internal.hostedDomain"

    .line 59
    .line 60
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "com.google.android.gms.signin.internal.logSessionId"

    .line 64
    .line 65
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 69
    .line 70
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    move-object v0, p4

    .line 74
    move-object v1, p1

    .line 75
    move-object v2, p2

    .line 76
    move-object v3, p3

    .line 77
    move-object v5, p5

    .line 78
    move-object v6, p6

    .line 79
    invoke-direct/range {v0 .. v6}, Lf5/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Landroid/os/Bundle;Ln3/d$a;Ln3/d$b;)V

    .line 80
    .line 81
    .line 82
    return-object p4
.end method
