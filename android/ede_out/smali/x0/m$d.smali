.class public final Lx0/m$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lx0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/n<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lm1/h;

.field public final synthetic c:Lx0/m;


# direct methods
.method public constructor <init>(Lx0/m;Lm1/h;Lx0/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/h;",
            "Lx0/n<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lx0/m$d;->c:Lx0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx0/m$d;->b:Lm1/h;

    iput-object p3, p0, Lx0/m$d;->a:Lx0/n;

    return-void
.end method
