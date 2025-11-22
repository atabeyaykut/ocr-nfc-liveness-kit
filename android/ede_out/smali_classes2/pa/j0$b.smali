.class public final Lpa/j0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lpa/j0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpa/j0$b;

    invoke-direct {v0}, Lpa/j0$b;-><init>()V

    sput-object v0, Lpa/j0$b;->b:Lpa/j0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lpa/g0;Llb/c;Lbc/l;)Lpa/z;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpa/z;

    invoke-direct {v0, p1, p2, p3}, Lpa/z;-><init>(Lpa/g0;Llb/c;Lbc/l;)V

    return-object v0
.end method
