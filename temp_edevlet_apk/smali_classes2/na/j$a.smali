.class public final Lna/j$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna/j;-><init>(Lja/k;Llb/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lna/j;


# direct methods
.method public constructor <init>(Lna/j;)V
    .locals 0

    iput-object p1, p0, Lna/j$a;->a:Lna/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lna/j$a;->a:Lna/j;

    .line 2
    .line 3
    iget-object v1, v0, Lna/j;->a:Lja/k;

    .line 4
    .line 5
    iget-object v0, v0, Lna/j;->b:Llb/c;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lja/k;->j(Llb/c;)Lma/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lma/e;->q()Lcc/m0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
