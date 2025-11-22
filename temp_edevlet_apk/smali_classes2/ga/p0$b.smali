.class public final Lga/p0$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/p0;-><init>(Lcc/e0;Lx9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lda/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/p0;


# direct methods
.method public constructor <init>(Lga/p0;)V
    .locals 0

    iput-object p1, p0, Lga/p0$b;->a:Lga/p0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/p0$b;->a:Lga/p0;

    .line 2
    .line 3
    iget-object v1, v0, Lga/p0;->a:Lcc/e0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lga/p0;->g(Lcc/e0;)Lda/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
