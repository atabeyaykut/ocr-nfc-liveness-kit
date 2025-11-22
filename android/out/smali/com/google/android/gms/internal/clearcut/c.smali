.class public final Lcom/google/android/gms/internal/clearcut/c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/clearcut/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/c;->a:Lcom/google/android/gms/internal/clearcut/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/c;->a:Lcom/google/android/gms/internal/clearcut/b;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/b;->d:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-object v1, p1, Lcom/google/android/gms/internal/clearcut/b;->e:Ljava/util/HashMap;

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/c;->a:Lcom/google/android/gms/internal/clearcut/b;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/b;->a(Lcom/google/android/gms/internal/clearcut/b;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method
