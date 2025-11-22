.class public final Lcom/bumptech/glide/manager/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/manager/s$e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/s$e;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/manager/u;->a:Lcom/bumptech/glide/manager/s$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/u;->a:Lcom/bumptech/glide/manager/s$e;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bumptech/glide/manager/s$e;->d:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/manager/u;->a:Lcom/bumptech/glide/manager/s$e;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/s$e;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iput-boolean v2, v1, Lcom/bumptech/glide/manager/s$e;->d:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/manager/u;->a:Lcom/bumptech/glide/manager/s$e;

    .line 14
    .line 15
    iget-boolean v1, v1, Lcom/bumptech/glide/manager/s$e;->d:Z

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const-string v0, "ConnectivityMonitor"

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "connectivity changed, isConnected: "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/bumptech/glide/manager/u;->a:Lcom/bumptech/glide/manager/s$e;

    .line 36
    .line 37
    iget-boolean v2, v2, Lcom/bumptech/glide/manager/s$e;->d:Z

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/u;->a:Lcom/bumptech/glide/manager/s$e;

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/bumptech/glide/manager/s$e;->d:Z

    .line 52
    .line 53
    new-instance v2, Lcom/bumptech/glide/manager/v;

    .line 54
    .line 55
    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/manager/v;-><init>(Lcom/bumptech/glide/manager/s$e;Z)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lq1/m;->e()Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
