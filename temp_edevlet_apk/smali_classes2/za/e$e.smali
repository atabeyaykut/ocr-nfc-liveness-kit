.class public final Lza/e$e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/e;-><init>(Lp4/g7;Lma/j;Lcb/g;Lma/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ldc/f;",
        "Lza/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/e;


# direct methods
.method public constructor <init>(Lza/e;)V
    .locals 0

    iput-object p1, p0, Lza/e$e;->a:Lza/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ldc/f;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lza/k;

    .line 9
    .line 10
    iget-object v3, p0, Lza/e$e;->a:Lza/e;

    .line 11
    .line 12
    iget-object v2, v3, Lza/e;->l:Lp4/g7;

    .line 13
    .line 14
    iget-object v4, v3, Lza/e;->j:Lcb/g;

    .line 15
    .line 16
    iget-object v0, v3, Lza/e;->k:Lma/e;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v5, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    iget-object v6, v3, Lza/e;->t:Lza/k;

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    invoke-direct/range {v1 .. v6}, Lza/k;-><init>(Lp4/g7;Lma/e;Lcb/g;ZLza/k;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method
