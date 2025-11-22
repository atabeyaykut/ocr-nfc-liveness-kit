.class public final Le/i;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation runtime Lr9/e;
    c = "coil.RealImageLoader"
    f = "RealImageLoader.kt"
    l = {
        0x9f,
        0xaa,
        0xae
    }
    m = "executeMain"
.end annotation


# instance fields
.field public a:Le/h;

.field public b:Lcoil/request/RequestDelegate;

.field public c:Lp/g;

.field public d:Le/b;

.field public e:Landroid/graphics/Bitmap;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Le/h;

.field public h:I


# direct methods
.method public constructor <init>(Le/h;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/h;",
            "Lp9/d<",
            "-",
            "Le/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/i;->g:Le/h;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/i;->f:Ljava/lang/Object;

    iget p1, p0, Le/i;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/i;->h:I

    const/4 p1, 0x0

    iget-object v0, p0, Le/i;->g:Le/h;

    invoke-static {v0, p1, p0}, Le/h;->c(Le/h;Lp/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
