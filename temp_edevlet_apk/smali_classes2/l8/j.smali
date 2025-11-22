.class public final Ll8/j;
.super Ll8/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll8/h<",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll8/p;)V
    .locals 0

    invoke-direct {p0, p1}, Ll8/h;-><init>(Ll8/p;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ll8/y;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Ll8/h;->f(Ll8/y;Ljava/util/Collection;)V

    return-void
.end method

.method public final e()Ljava/util/Collection;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
