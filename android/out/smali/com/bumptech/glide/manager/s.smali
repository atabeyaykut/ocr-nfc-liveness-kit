.class public final Lcom/bumptech/glide/manager/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/s$e;,
        Lcom/bumptech/glide/manager/s$d;,
        Lcom/bumptech/glide/manager/s$c;
    }
.end annotation


# static fields
.field public static volatile d:Lcom/bumptech/glide/manager/s;


# instance fields
.field public final a:Lcom/bumptech/glide/manager/s$c;

.field public final b:Ljava/util/HashSet;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public c:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->b:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/manager/s$a;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/bumptech/glide/manager/s$a;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lq1/f;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lq1/f;-><init>(Lq1/g;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/bumptech/glide/manager/s$b;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/s$b;-><init>(Lcom/bumptech/glide/manager/s;)V

    .line 24
    .line 25
    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v3, 0x18

    .line 29
    .line 30
    if-lt v2, v3, :cond_0

    .line 31
    .line 32
    new-instance p1, Lcom/bumptech/glide/manager/s$d;

    .line 33
    .line 34
    invoke-direct {p1, v1, v0}, Lcom/bumptech/glide/manager/s$d;-><init>(Lq1/f;Lcom/bumptech/glide/manager/s$b;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v2, Lcom/bumptech/glide/manager/s$e;

    .line 39
    .line 40
    invoke-direct {v2, p1, v1, v0}, Lcom/bumptech/glide/manager/s$e;-><init>(Landroid/content/Context;Lq1/f;Lcom/bumptech/glide/manager/s$b;)V

    .line 41
    .line 42
    .line 43
    move-object p1, v2

    .line 44
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->a:Lcom/bumptech/glide/manager/s$c;

    .line 45
    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/manager/s;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/bumptech/glide/manager/s;->d:Lcom/bumptech/glide/manager/s;

    if-nez v0, :cond_1

    const-class v0, Lcom/bumptech/glide/manager/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/manager/s;->d:Lcom/bumptech/glide/manager/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bumptech/glide/manager/s;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/s;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bumptech/glide/manager/s;->d:Lcom/bumptech/glide/manager/s;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/bumptech/glide/manager/s;->d:Lcom/bumptech/glide/manager/s;

    return-object p0
.end method
