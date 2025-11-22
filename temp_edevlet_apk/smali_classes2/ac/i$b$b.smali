.class public final Lac/i$b$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/i$b;-><init>(Lac/i;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Set<",
        "+",
        "Llb/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/i$b;

.field public final synthetic b:Lac/i;


# direct methods
.method public constructor <init>(Lac/i$b;Lac/i;)V
    .locals 0

    iput-object p1, p0, Lac/i$b$b;->a:Lac/i$b;

    iput-object p2, p0, Lac/i$b$b;->b:Lac/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lac/i$b$b;->a:Lac/i$b;

    .line 2
    .line 3
    iget-object v0, v0, Lac/i$b;->a:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lac/i$b$b;->b:Lac/i;

    .line 10
    .line 11
    invoke-virtual {v1}, Lac/i;->o()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
