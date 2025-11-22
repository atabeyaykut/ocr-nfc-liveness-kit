.class public final Lja/l$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Llb/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lja/l;


# direct methods
.method public constructor <init>(Lja/l;)V
    .locals 0

    iput-object p1, p0, Lja/l$a;->a:Lja/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lja/o;->k:Llb/c;

    .line 2
    .line 3
    iget-object v1, p0, Lja/l$a;->a:Lja/l;

    .line 4
    .line 5
    iget-object v1, v1, Lja/l;->b:Llb/f;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Llb/c;->c(Llb/f;)Llb/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
