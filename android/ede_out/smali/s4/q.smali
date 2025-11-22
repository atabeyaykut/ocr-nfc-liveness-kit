.class public Ls4/q;
.super Ls4/m;
.source "SourceFile"

# interfaces
.implements Ls4/e0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls4/m<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ls4/e0<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls4/x;)V
    .locals 0

    invoke-direct {p0, p1}, Ls4/m;-><init>(Ls4/x;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ls4/l;
    .locals 3

    .line 1
    iget-object v0, p0, Ls4/m;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    instance-of v1, v0, Ljava/util/RandomAccess;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Ls4/h;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1, v0, v2}, Ls4/h;-><init>(Ls4/m;Ljava/lang/Object;Ljava/util/List;Ls4/j;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ls4/l;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1, v0, v2}, Ls4/l;-><init>(Ls4/m;Ljava/lang/Object;Ljava/util/List;Ls4/j;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object v1
.end method
