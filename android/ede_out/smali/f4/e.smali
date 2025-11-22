.class public final Lf4/e;
.super Lr3/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr3/h<",
        "Lf4/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final B:Lg3/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Lg3/a$a;Ln3/d$a;Ln3/d$b;)V
    .locals 7

    .line 1
    const/16 v3, 0x44

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
    new-instance p1, Lg3/a$a$a;

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    sget-object p4, Lg3/a$a;->c:Lg3/a$a;

    .line 17
    .line 18
    :cond_0
    invoke-direct {p1, p4}, Lg3/a$a$a;-><init>(Lg3/a$a;)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x10

    .line 22
    .line 23
    new-array p2, p2, [B

    .line 24
    .line 25
    sget-object p3, Lf4/b;->a:Ljava/util/Random;

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Ljava/util/Random;->nextBytes([B)V

    .line 28
    .line 29
    .line 30
    const/16 p3, 0xb

    .line 31
    .line 32
    invoke-static {p2, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p1, Lg3/a$a$a;->b:Ljava/lang/String;

    .line 37
    .line 38
    new-instance p2, Lg3/a$a;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lg3/a$a;-><init>(Lg3/a$a$a;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lf4/e;->B:Lg3/a$a;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final l()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final bridge synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lf4/f;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lf4/f;

    goto :goto_0

    :cond_1
    new-instance v0, Lf4/f;

    invoke-direct {v0, p1}, Lf4/f;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final u()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lf4/e;->B:Lg3/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "consumer_package"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "force_save_dialog"

    .line 18
    .line 19
    iget-boolean v3, v0, Lg3/a$a;->a:Z

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v2, "log_session_id"

    .line 25
    .line 26
    iget-object v0, v0, Lg3/a$a;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method
