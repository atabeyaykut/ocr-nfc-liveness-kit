.class public final Lga/h0$a;
.super Lga/l0$b;
.source "SourceFile"

# interfaces
.implements Lda/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lga/l0$b<",
        "TV;>;",
        "Lda/l$a<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final h:Lga/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/h0<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/h0<",
            "TT;+TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lga/l0$b;-><init>()V

    iput-object p1, p0, Lga/h0$a;->h:Lga/h0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lga/h0$a;->h:Lga/h0;

    invoke-virtual {v0, p1}, Lga/h0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s()Lga/l0;
    .locals 1

    iget-object v0, p0, Lga/h0$a;->h:Lga/h0;

    return-object v0
.end method
