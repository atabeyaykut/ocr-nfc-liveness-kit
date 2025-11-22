.class public final Lc5/g8;
.super Lc5/j7;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/util/HashSet;

.field public f:Landroidx/collection/ArrayMap;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lc5/o7;)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/j7;-><init>(Lc5/o7;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 0

    return-void
.end method

.method public final g(Ljava/lang/Integer;)Lc5/b8;
    .locals 2

    iget-object v0, p0, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc5/b8;

    return-object p1

    :cond_0
    new-instance v0, Lc5/b8;

    iget-object v1, p0, Lc5/g8;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lc5/b8;-><init>(Lc5/g8;Ljava/lang/String;)V

    iget-object v1, p0, Lc5/g8;->f:Landroidx/collection/ArrayMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
