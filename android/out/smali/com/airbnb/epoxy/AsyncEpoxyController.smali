.class public abstract Lcom/airbnb/epoxy/AsyncEpoxyController;
.super Lcom/airbnb/epoxy/p;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/epoxy/AsyncEpoxyController;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/airbnb/epoxy/AsyncEpoxyController;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-static {p1}, Lcom/airbnb/epoxy/AsyncEpoxyController;->getHandler(Z)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p2}, Lcom/airbnb/epoxy/AsyncEpoxyController;->getHandler(Z)Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/epoxy/p;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method private static getHandler(Z)Landroid/os/Handler;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object p0, Lcom/airbnb/epoxy/o;->c:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Landroid/os/HandlerThread;

    .line 8
    .line 9
    const-string v0, "epoxy"

    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-static {p0, v0}, Lcom/airbnb/epoxy/o;->a(Landroid/os/Looper;Z)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/airbnb/epoxy/o;->c:Landroid/os/Handler;

    .line 27
    .line 28
    :cond_0
    sget-object p0, Lcom/airbnb/epoxy/o;->c:Landroid/os/Handler;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object p0, Lcom/airbnb/epoxy/o;->a:Landroid/os/Handler;

    .line 32
    .line 33
    :goto_0
    return-object p0
.end method
