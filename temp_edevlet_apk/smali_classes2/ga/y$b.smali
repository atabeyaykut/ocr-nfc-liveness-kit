.class public final Lga/y$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/y;-><init>(Lga/s;Lma/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lga/y$a<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/y<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/y<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/y$b;->a:Lga/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lga/y$a;

    iget-object v1, p0, Lga/y$b;->a:Lga/y;

    invoke-direct {v0, v1}, Lga/y$a;-><init>(Lga/y;)V

    return-object v0
.end method
