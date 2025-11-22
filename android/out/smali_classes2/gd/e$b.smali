.class public final Lgd/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgd/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgd/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgd/e;


# direct methods
.method public constructor <init>(Lgd/e;)V
    .locals 0

    iput-object p1, p0, Lgd/e$b;->a:Lgd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Lgd/e$c;)Z
    .locals 2

    iget-object v0, p0, Lgd/e$b;->a:Lgd/e;

    iget-object v0, v0, Lgd/e;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Lgd/e$b;->a:Lgd/e;

    invoke-virtual {v0}, Lgd/e;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BeaconManager"

    const-string v2, "Method invocation will be ignored -- no BLE."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgd/e$b;->a:Lgd/e;

    iget-object v0, v0, Lgd/e;->g:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lgd/e$b;->a:Lgd/e;

    iget-object v2, v2, Lgd/e;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgd/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lgd/e$b;->a:Lgd/e;

    invoke-virtual {v5, v3}, Lgd/e;->o(Lgd/l;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "BeaconManager"

    const-string v6, "Failed to start ranging"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v5, v6, v4}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lgd/e$b;->a:Lgd/e;

    iget-object v2, v2, Lgd/e;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lgd/e$b;->a:Lgd/e;

    iget-object v2, v0, Lgd/e;->h:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lgd/e$b;->a:Lgd/e;

    iget-object v0, v0, Lgd/e;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgd/l;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Lgd/e$b;->a:Lgd/e;

    invoke-virtual {v5, v3}, Lgd/e;->m(Lgd/l;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    const-string v5, "BeaconManager"

    const-string v6, "Failed to start monitoring"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v1

    invoke-static {v5, v6, v7}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lgd/e$b;->a:Lgd/e;

    iget-object v0, v0, Lgd/e;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lgd/e$b;->a:Lgd/e;

    iget-object v0, v0, Lgd/e;->a:Landroid/content/Context;

    return-object v0
.end method
