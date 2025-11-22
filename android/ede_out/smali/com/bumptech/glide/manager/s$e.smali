.class public final Lcom/bumptech/glide/manager/s$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/s$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/bumptech/glide/manager/c$a;

.field public final c:Lq1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq1/g<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public volatile e:Z

.field public final f:Lcom/bumptech/glide/manager/s$e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/bumptech/glide/manager/s$e;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lq1/f;Lcom/bumptech/glide/manager/s$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/s$e$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/s$e$a;-><init>(Lcom/bumptech/glide/manager/s$e;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/s$e;->f:Lcom/bumptech/glide/manager/s$e$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/s$e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/manager/s$e;->c:Lq1/g;

    iput-object p3, p0, Lcom/bumptech/glide/manager/s$e;->b:Lcom/bumptech/glide/manager/c$a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    new-instance v0, Lcom/bumptech/glide/manager/s$e$b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/s$e$b;-><init>(Lcom/bumptech/glide/manager/s$e;)V

    sget-object v1, Lcom/bumptech/glide/manager/s$e;->g:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/manager/s$e$c;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/s$e$c;-><init>(Lcom/bumptech/glide/manager/s$e;)V

    sget-object v1, Lcom/bumptech/glide/manager/s$e;->g:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/s$e;->c:Lq1/g;

    invoke-interface {v1}, Lq1/g;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x5

    const-string v3, "ConnectivityMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Failed to determine connectivity status when connectivity changed"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method
