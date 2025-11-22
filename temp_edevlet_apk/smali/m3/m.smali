.class public final Lm3/m;
.super Lh4/i;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final synthetic b:Lm3/e;


# direct methods
.method public constructor <init>(Lm3/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lm3/m;->b:Lm3/e;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lh4/i;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm3/m;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Don\'t know how to handle this message: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "GoogleApiAvailability"

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget p1, Lm3/f;->a:I

    .line 27
    .line 28
    iget-object v1, p0, Lm3/m;->b:Lm3/e;

    .line 29
    .line 30
    iget-object v2, p0, Lm3/m;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1, p1, v2}, Lm3/e;->c(ILandroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sget-object v3, Lm3/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    if-eq p1, v4, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x3

    .line 45
    if-eq p1, v4, :cond_1

    .line 46
    .line 47
    const/16 v4, 0x9

    .line 48
    .line 49
    if-eq p1, v4, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    :cond_1
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const-string v0, "n"

    .line 55
    .line 56
    invoke-virtual {v1, v2, p1, v0}, Lm3/e;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget v4, Lj4/d;->a:I

    .line 65
    .line 66
    const/high16 v5, 0x8000000

    .line 67
    .line 68
    or-int/2addr v4, v5

    .line 69
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lm3/e;->g(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method
