.class public final Lga/h0$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/h0;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lga/h0$a<",
        "TT;+TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/h0<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/h0<",
            "TT;+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/h0$b;->a:Lga/h0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lga/h0$a;

    iget-object v1, p0, Lga/h0$b;->a:Lga/h0;

    invoke-direct {v0, v1}, Lga/h0$a;-><init>(Lga/h0;)V

    return-object v0
.end method
