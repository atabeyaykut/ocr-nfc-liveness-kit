.class public final Lcc/b1$b$d;
.super Lcc/b1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/b1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lcc/b1$b$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc/b1$b$d;

    invoke-direct {v0}, Lcc/b1$b$d;-><init>()V

    sput-object v0, Lcc/b1$b$d;->a:Lcc/b1$b$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcc/b1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcc/b1;Lfc/h;)Lfc/i;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcc/b1;->c:Lfc/n;

    invoke-interface {p1, p2}, Lfc/n;->g(Lfc/h;)Lcc/m0;

    move-result-object p1

    return-object p1
.end method
