.class public final Lc8/a$b;
.super Lc8/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc8/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/AbstractList;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/AbstractList;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lc8/a$c;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object p4, p0, Lc8/a$b;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ls4/p9;)V
    .locals 3
    .param p1    # Ls4/p9;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Ls4/p9;->a:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Ls4/p9;->c:Ljava/util/List;

    iget-object v2, p1, Ls4/p9;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lc8/a$c;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    sget-object v0, La2/b;->b:La2/b;

    iget-object p1, p1, Ls4/p9;->e:Ljava/util/List;

    invoke-static {p1, v0}, Ls4/b;->a(Ljava/util/List;Ls4/ca;)Ljava/util/AbstractList;

    move-result-object p1

    iput-object p1, p0, Lc8/a$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc8/a$a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/a$b;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
