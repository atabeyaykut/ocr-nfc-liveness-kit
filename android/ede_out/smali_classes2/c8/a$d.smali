.class public final Lc8/a$d;
.super Lc8/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc8/a$b;",
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

    iput-object p4, p0, Lc8/a$d;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ls4/l9;)V
    .locals 3
    .param p1    # Ls4/l9;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Ls4/l9;->a:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Ls4/l9;->c:Ljava/util/List;

    iget-object v2, p1, Ls4/l9;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lc8/a$c;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    sget-object v0, Lb0/a;->a:Lb0/a;

    iget-object p1, p1, Ls4/l9;->e:Ljava/util/List;

    invoke-static {p1, v0}, Ls4/b;->a(Ljava/util/List;Ls4/ca;)Ljava/util/AbstractList;

    move-result-object p1

    iput-object p1, p0, Lc8/a$d;->c:Ljava/util/List;

    return-void
.end method
