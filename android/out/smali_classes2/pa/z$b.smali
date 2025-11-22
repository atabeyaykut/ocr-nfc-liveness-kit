.class public final Lpa/z$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/z;-><init>(Lpa/g0;Llb/c;Lbc/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lma/e0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/z;


# direct methods
.method public constructor <init>(Lpa/z;)V
    .locals 0

    iput-object p1, p0, Lpa/z$b;->a:Lpa/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lpa/z$b;->a:Lpa/z;

    .line 2
    .line 3
    iget-object v1, v0, Lpa/z;->c:Lpa/g0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lpa/g0;->z0()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v1, Lpa/g0;->l:Ll9/j;

    .line 9
    .line 10
    invoke-virtual {v1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lpa/o;

    .line 15
    .line 16
    iget-object v0, v0, Lpa/z;->d:Llb/c;

    .line 17
    .line 18
    invoke-static {v1, v0}, Lc5/v;->F(Lma/f0;Llb/c;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
