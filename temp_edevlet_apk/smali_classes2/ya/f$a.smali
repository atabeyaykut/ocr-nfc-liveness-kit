.class public final Lya/f$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/f;->d(Llb/c;)Lza/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lza/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lya/f;

.field public final synthetic b:Lcb/t;


# direct methods
.method public constructor <init>(Lya/f;Lcb/t;)V
    .locals 0

    iput-object p1, p0, Lya/f$a;->a:Lya/f;

    iput-object p2, p0, Lya/f$a;->b:Lcb/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lza/m;

    .line 2
    .line 3
    iget-object v1, p0, Lya/f$a;->a:Lya/f;

    .line 4
    .line 5
    iget-object v1, v1, Lya/f;->a:Lp4/g7;

    .line 6
    .line 7
    iget-object v2, p0, Lya/f$a;->b:Lcb/t;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lza/m;-><init>(Lp4/g7;Lcb/t;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
