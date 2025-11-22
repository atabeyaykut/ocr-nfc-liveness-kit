.class public final Lga/c0$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/c0;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lga/c0$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/c0;


# direct methods
.method public constructor <init>(Lga/c0;)V
    .locals 0

    iput-object p1, p0, Lga/c0$b;->a:Lga/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lga/c0$a;

    iget-object v1, p0, Lga/c0$b;->a:Lga/c0;

    invoke-direct {v0, v1}, Lga/c0$a;-><init>(Lga/c0;)V

    return-object v0
.end method
