.class public final Lzg/r$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzg/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lzg/k;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;",
        ">;>;",
        "Lzg/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lzg/r$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzg/r$a;

    invoke-direct {v0}, Lzg/r$a;-><init>()V

    sput-object v0, Lzg/r$a;->a:Lzg/r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v5, p1

    .line 2
    .line 3
    check-cast v5, Lzg/k;

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    check-cast v4, Lr0/b;

    .line 8
    .line 9
    const-string v0, "$this$execute"

    .line 10
    .line 11
    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "result"

    .line 15
    .line 16
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v4}, Lr0/b;->a()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, v3

    .line 36
    :goto_0
    const/4 v2, 0x0

    .line 37
    const/16 v19, 0x0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    const/4 v13, 0x0

    .line 49
    const/4 v14, 0x0

    .line 50
    const/4 v15, 0x0

    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    const/16 v17, 0x7ff3

    .line 54
    .line 55
    const/16 v18, 0x0

    .line 56
    .line 57
    move-object v1, v5

    .line 58
    move-object/from16 v3, v19

    .line 59
    .line 60
    move-object/from16 v19, v5

    .line 61
    .line 62
    move-object v5, v0

    .line 63
    :try_start_1
    invoke-static/range {v1 .. v18}, Lzg/k;->copy$default(Lzg/k;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;Lzg/a;ILjava/lang/Object;)Lzg/k;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    move-object/from16 v19, v5

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    const/4 v15, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const/16 v17, 0x7ffb

    .line 84
    .line 85
    const/16 v18, 0x0

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x0

    .line 89
    move-object/from16 v1, v19

    .line 90
    .line 91
    invoke-static/range {v1 .. v18}, Lzg/k;->copy$default(Lzg/k;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;Lzg/a;ILjava/lang/Object;)Lzg/k;

    .line 92
    .line 93
    .line 94
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_1

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    move-object/from16 v19, v5

    .line 100
    .line 101
    :goto_1
    const/4 v2, 0x0

    .line 102
    const/4 v3, 0x0

    .line 103
    new-instance v1, Lr0/i;

    .line 104
    .line 105
    move-object v4, v1

    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-direct {v1, v5, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    const/4 v5, 0x0

    .line 111
    const/4 v6, 0x0

    .line 112
    const/4 v7, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v10, 0x0

    .line 116
    const/4 v11, 0x0

    .line 117
    const/4 v12, 0x0

    .line 118
    const/4 v13, 0x0

    .line 119
    const/4 v14, 0x0

    .line 120
    const/4 v15, 0x0

    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    const/16 v17, 0x7ffb

    .line 124
    .line 125
    const/16 v18, 0x0

    .line 126
    .line 127
    move-object/from16 v1, v19

    .line 128
    .line 129
    invoke-static/range {v1 .. v18}, Lzg/k;->copy$default(Lzg/k;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;Lzg/a;ILjava/lang/Object;)Lzg/k;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_2
    return-object v0
.end method
