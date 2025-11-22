.class public final Lga/h$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lga/p0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/h<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/h<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/h$c;->a:Lga/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lga/p0;

    iget-object v1, p0, Lga/h$c;->a:Lga/h;

    invoke-virtual {v1}, Lga/h;->o()Lma/b;

    move-result-object v2

    invoke-interface {v2}, Lma/a;->getReturnType()Lcc/e0;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    new-instance v3, Lga/m;

    invoke-direct {v3, v1}, Lga/m;-><init>(Lga/h;)V

    invoke-direct {v0, v2, v3}, Lga/p0;-><init>(Lcc/e0;Lx9/a;)V

    return-object v0
.end method
