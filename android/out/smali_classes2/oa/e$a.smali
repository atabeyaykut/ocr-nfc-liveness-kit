.class public final Loa/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Loa/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Loa/e$a;

    invoke-direct {v0}, Loa/e$a;-><init>()V

    sput-object v0, Loa/e$a;->a:Loa/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llb/b;Lcc/m0;)Lcc/m0;
    .locals 0

    const-string p1, "computedType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
