.class public final Lc6/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7/b;
.implements La7/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La7/b<",
        "TT;>;",
        "La7/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Landroidx/constraintlayout/core/state/b;

.field public static final d:Lc6/w;


# instance fields
.field public a:La7/a$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La7/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:La7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La7/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    sput-object v0, Lc6/x;->c:Landroidx/constraintlayout/core/state/b;

    new-instance v0, Lc6/w;

    invoke-direct {v0}, Lc6/w;-><init>()V

    sput-object v0, Lc6/x;->d:Lc6/w;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/b;La7/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/x;->a:La7/a$a;

    iput-object p2, p0, Lc6/x;->b:La7/b;

    return-void
.end method


# virtual methods
.method public final a(La7/a$a;)V
    .locals 4
    .param p1    # La7/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La7/a$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc6/x;->b:La7/b;

    sget-object v1, Lc6/x;->d:Lc6/w;

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, La7/a$a;->a(La7/b;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc6/x;->b:La7/b;

    if-eq v0, v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc6/x;->a:La7/a$a;

    new-instance v2, Landroidx/camera/camera2/interop/h;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1, p1}, Landroidx/camera/camera2/interop/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lc6/x;->a:La7/a$a;

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, La7/a$a;->a(La7/b;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc6/x;->b:La7/b;

    invoke-interface {v0}, La7/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
