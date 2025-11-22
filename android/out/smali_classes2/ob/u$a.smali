.class public final Lob/u$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lob/u;->a(Ljava/util/Collection;Lx9/l;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "TH;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkc/d<",
            "TH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkc/d<",
            "TH;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lob/u$a;->a:Lkc/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lob/u$a;->a:Lkc/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lkc/d;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    return-object p1
.end method
