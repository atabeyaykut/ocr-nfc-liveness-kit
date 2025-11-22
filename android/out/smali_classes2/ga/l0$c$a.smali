.class public final Lga/l0$c$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/l0$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lha/f<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/l0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/l0$c<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/l0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/l0$c<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/l0$c$a;->a:Lga/l0$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lga/l0$c$a;->a:Lga/l0$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lga/m0;->a(Lga/l0$a;Z)Lha/f;

    move-result-object v0

    return-object v0
.end method
