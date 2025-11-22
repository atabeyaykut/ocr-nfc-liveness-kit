.class public final Lu2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/g;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lu2/s;

.field public final c:Lu2/v;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lu2/j;Lu2/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/t;->a:Ljava/util/Set;

    iput-object p2, p0, Lu2/t;->b:Lu2/s;

    iput-object p3, p0, Lu2/t;->c:Lu2/v;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lr2/b;Lr2/e;)Lu2/u;
    .locals 8

    iget-object v0, p0, Lu2/t;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lu2/u;

    iget-object v3, p0, Lu2/t;->b:Lu2/s;

    iget-object v7, p0, Lu2/t;->c:Lu2/v;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lu2/u;-><init>(Lu2/s;Ljava/lang/String;Lr2/b;Lr2/e;Lu2/v;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p3, v1

    const/4 p2, 0x1

    aput-object v0, p3, p2

    const-string p2, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
