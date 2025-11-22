.class public final Lg/b$c;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/b;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "coil.decode.BitmapFactoryDecoder"
    f = "BitmapFactoryDecoder.kt"
    l = {
        0xd2,
        0x20
    }
    m = "decode"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lkotlinx/coroutines/sync/f;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lg/b;

.field public e:I


# direct methods
.method public constructor <init>(Lg/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/b;",
            "Lp9/d<",
            "-",
            "Lg/b$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg/b$c;->d:Lg/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg/b$c;->c:Ljava/lang/Object;

    iget p1, p0, Lg/b$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg/b$c;->e:I

    iget-object p1, p0, Lg/b$c;->d:Lg/b;

    invoke-virtual {p1, p0}, Lg/b;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
