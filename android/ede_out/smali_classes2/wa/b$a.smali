.class public final Lwa/b$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/b;-><init>(Lp4/g7;Lcb/a;Llb/c;)V
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
.field public final synthetic a:Lp4/g7;

.field public final synthetic b:Lwa/b;


# direct methods
.method public constructor <init>(Lp4/g7;Lwa/b;)V
    .locals 0

    iput-object p1, p0, Lwa/b$a;->a:Lp4/g7;

    iput-object p2, p0, Lwa/b$a;->b:Lwa/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lwa/b$a;->a:Lp4/g7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp4/g7;->a()Lma/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lma/b0;->m()Lja/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lwa/b$a;->b:Lwa/b;

    .line 12
    .line 13
    iget-object v1, v1, Lwa/b;->a:Llb/c;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lja/k;->j(Llb/c;)Lma/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lma/e;->q()Lcc/m0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "c.module.builtIns.getBui\u2026qName(fqName).defaultType"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
