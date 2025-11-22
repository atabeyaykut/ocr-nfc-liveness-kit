.class public final Lkotlinx/coroutines/internal/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp9/f;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lnc/v1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lnc/v1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lp9/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/z;->a:Lp9/f;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/z;->b:[Ljava/lang/Object;

    new-array p1, p2, [Lnc/v1;

    iput-object p1, p0, Lkotlinx/coroutines/internal/z;->c:[Lnc/v1;

    return-void
.end method
