.class public final Lac/d$a$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/d$a;-><init>(Lac/d;Ldc/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "+",
        "Lma/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/d$a;


# direct methods
.method public constructor <init>(Lac/d$a;)V
    .locals 0

    iput-object p1, p0, Lac/d$a$b;->a:Lac/d$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lvb/d;->m:Lvb/d;

    .line 2
    .line 3
    sget-object v1, Lvb/i;->a:Lvb/i$a;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lvb/i$a;->b:Lvb/i$a$a;

    .line 9
    .line 10
    iget-object v2, p0, Lac/d$a$b;->a:Lac/d$a;

    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Lac/i;->i(Lvb/d;Lx9/l;)Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
