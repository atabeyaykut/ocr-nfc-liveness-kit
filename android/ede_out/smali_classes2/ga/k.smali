.class public final Lga/k;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lma/j0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lma/b;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lma/b;I)V
    .locals 0

    iput-object p1, p0, Lga/k;->a:Lma/b;

    iput p2, p0, Lga/k;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lga/k;->a:Lma/b;

    invoke-interface {v0}, Lma/a;->g()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lga/k;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "descriptor.valueParameters[i]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lma/j0;

    return-object v0
.end method
