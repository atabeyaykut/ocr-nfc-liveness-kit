.class public final Lg7/x0;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg7/x0$a;
    }
.end annotation


# instance fields
.field public final a:Lg7/x0$a;


# direct methods
.method public constructor <init>(Lg7/g$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lg7/x0;->a:Lg7/x0$a;

    return-void
.end method


# virtual methods
.method public final a(Lg7/a1$a;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const-string v0, "FirebaseMessaging"

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, "service received new intent via bind strategy"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Lg7/a1$a;->a:Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v1, p0, Lg7/x0;->a:Lg7/x0$a;

    .line 28
    .line 29
    check-cast v1, Lg7/g$a;

    .line 30
    .line 31
    iget-object v1, v1, Lg7/g$a;->a:Lg7/g;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v2, Lh5/l;

    .line 37
    .line 38
    invoke-direct {v2}, Lh5/l;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lg7/e;

    .line 42
    .line 43
    invoke-direct {v3, v1, v0, v2}, Lg7/e;-><init>(Lg7/g;Landroid/content/Intent;Lh5/l;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v1, Lg7/g;->a:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lg7/w0;->a:Lg7/w0;

    .line 52
    .line 53
    new-instance v1, Lg7/v0;

    .line 54
    .line 55
    invoke-direct {v1, p1}, Lg7/v0;-><init>(Lg7/a1$a;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v2, Lh5/l;->a:Lh5/z;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Lh5/z;->o(Ljava/util/concurrent/Executor;Lh5/e;)Lh5/z;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 65
    .line 66
    const-string v0, "Binding only allowed within app"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method
