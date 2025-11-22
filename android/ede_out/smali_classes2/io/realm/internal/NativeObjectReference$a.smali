.class public final Lio/realm/internal/NativeObjectReference$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/NativeObjectReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lio/realm/internal/NativeObjectReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/realm/internal/NativeObjectReference;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    .line 3
    .line 4
    iget-object v1, p1, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, p1, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    .line 8
    .line 9
    iput-object v2, p1, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iput-object v0, v1, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-object v0, p0, Lio/realm/internal/NativeObjectReference$a;->a:Lio/realm/internal/NativeObjectReference;

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-object v1, v0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :cond_1
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    .line 26
    throw p1
.end method
