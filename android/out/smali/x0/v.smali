.class public final Lx0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/w;
.implements Lr1/a$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx0/w<",
        "TZ;>;",
        "Lr1/a$d;"
    }
.end annotation


# static fields
.field public static final e:Lr1/a$c;


# instance fields
.field public final a:Lr1/d$a;

.field public b:Lx0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/w<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx0/v$a;

    invoke-direct {v0}, Lx0/v$a;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lr1/a;->a(ILr1/a$b;)Lr1/a$c;

    move-result-object v0

    sput-object v0, Lx0/v;->e:Lr1/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr1/d$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lr1/d$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lx0/v;->a:Lr1/d$a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lx0/v;->b:Lx0/w;

    invoke-interface {v0}, Lx0/w;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx0/v;->a:Lr1/d$a;

    invoke-virtual {v0}, Lr1/d$a;->a()V

    iget-boolean v0, p0, Lx0/v;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx0/v;->c:Z

    iget-boolean v0, p0, Lx0/v;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lx0/v;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lx0/v;->b:Lx0/w;

    invoke-interface {v0}, Lx0/w;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lx0/v;->b:Lx0/w;

    invoke-interface {v0}, Lx0/w;->getSize()I

    move-result v0

    return v0
.end method

.method public final r()Lr1/d$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lx0/v;->a:Lr1/d$a;

    return-object v0
.end method

.method public final declared-synchronized recycle()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lx0/v;->a:Lr1/d$a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lr1/d$a;->a()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lx0/v;->d:Z

    .line 9
    .line 10
    iget-boolean v0, p0, Lx0/v;->c:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lx0/v;->b:Lx0/w;

    .line 15
    .line 16
    invoke-interface {v0}, Lx0/w;->recycle()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lx0/v;->b:Lx0/w;

    .line 21
    .line 22
    sget-object v0, Lx0/v;->e:Lr1/a$c;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lr1/a$c;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method
