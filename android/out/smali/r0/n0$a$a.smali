.class public final Lr0/n0$a$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/n0$a;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksViewModelExtensionsKt$_internal2$$inlined$map$1$2"
    f = "MavericksViewModelExtensions.kt"
    l = {
        0x87
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lr0/n0$a;


# direct methods
.method public constructor <init>(Lr0/n0$a;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/n0$a$a;->c:Lr0/n0$a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr0/n0$a$a;->a:Ljava/lang/Object;

    iget p1, p0, Lr0/n0$a$a;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr0/n0$a$a;->b:I

    iget-object p1, p0, Lr0/n0$a$a;->c:Lr0/n0$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lr0/n0$a;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
