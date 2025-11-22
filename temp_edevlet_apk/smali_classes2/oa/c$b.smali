.class public final Loa/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Loa/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Loa/c$b;

    invoke-direct {v0}, Loa/c$b;-><init>()V

    sput-object v0, Loa/c$b;->a:Loa/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lac/d;Lac/l;)Z
    .locals 1

    .line 1
    const-string v0, "classDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lna/b;->getAnnotations()Lna/h;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object p2, Loa/d;->a:Llb/c;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Lna/h;->P(Llb/c;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    return p1
.end method
